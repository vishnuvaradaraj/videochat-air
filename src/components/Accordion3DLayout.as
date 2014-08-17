package components
{
    import flash.display.DisplayObject;
    import flash.events.Event;
    import flash.events.TimerEvent;
    import flash.geom.ColorTransform;
    import flash.geom.Matrix3D;
    import flash.geom.PerspectiveProjection;
    import flash.geom.Point;
    import flash.geom.Transform;
    import flash.geom.Vector3D;
    import flash.utils.Timer;
    import flash.utils.getTimer;

    import mx.core.ILayoutElement;

    import spark.layouts.supportClasses.LayoutBase;
    import spark.primitives.supportClasses.GraphicElement;

    public class Accordion3DLayout extends LayoutBase
    {
        private static const MAX_ORIENTATION:int = 80;

        private static const ANIMATION_DURATION:int = 200;

        private static const ANIMATION_STEPS:int = 24;

        private var transitionTimer:Timer;

        protected var finalMatrixs:Vector.<Matrix3D>;

        public function Accordion3DLayout()
        {
            lighteningFactor = 0.2;
            darkeningFactor = -0.6;
            orientation = 50;
            gap = 0;
        }

        //---------------------------------------------------------
        // GAP
        //---------------------------------------------------------
        private var _gap:Number;

        [Bindable]
        public function get gap():Number
        {
            return _gap;
        }

        public function set gap(value:Number):void
        {
            _gap = value;
            if (target)
            {
                target.invalidateDisplayList();
                target.invalidateSize();
            }
        }


        //---------------------------------------------------------
        // LIGHTENING FACTOR
        //---------------------------------------------------------
        protected var normalisedLighteningFactor:Number;

        private var _lighteningFactor:Number = NaN;

        [Bindable]
        public function get lighteningFactor():Number
        {
            return _lighteningFactor;
        }

        public function set lighteningFactor(value:Number):void
        {
            _lighteningFactor = value;
            normalisedLighteningFactor = normalizeLightFactor(value);

            if (target)
                target.invalidateDisplayList();
        }


        //---------------------------------------------------------
        // DARKENING FACTOR
        //---------------------------------------------------------
        protected var normalisedDarkeningFactor:Number;

        private var _darkeningFactor:Number = NaN;

        [Bindable]
        public function get darkeningFactor():Number
        {
            return _darkeningFactor;
        }

        public function set darkeningFactor(value:Number):void
        {
            _darkeningFactor = value;
            normalisedDarkeningFactor = normalizeLightFactor(value);

            if (target)
                target.invalidateDisplayList();
        }

        private function normalizeLightFactor(factor:Number):Number
        {
            return (factor / MAX_ORIENTATION) * orientation + 1;
        }

        //---------------------------------------------------------
        // ORIENTATION
        //---------------------------------------------------------
        private var _orientation:Number;

        protected var orientationRad:Number;

        [Bindable]
        public function get orientation():Number
        {
            return _orientation;
        }

        public function set orientation(value:Number):void
        {
            _orientation = value;
            orientationRad = value * Math.PI / 180;

            if (!isNaN(lighteningFactor))
                normalisedLighteningFactor = normalizeLightFactor(lighteningFactor);

            if (!isNaN(darkeningFactor))
                normalisedDarkeningFactor = normalizeLightFactor(darkeningFactor);

            if (target)
            {
                target.invalidateSize();
                target.invalidateDisplayList();
            }
        }

        //---------------------------------------------------------
        // SELECTED INDEX
        //---------------------------------------------------------
        private var _selectedIndex:int = -1;

        [Bindable]
        public function get selectedIndex():int
        {
            return _selectedIndex;
        }

        public function set selectedIndex(value:int):void
        {
            _selectedIndex = value;

            if (target)
            {
                target.invalidateSize();
                target.invalidateDisplayList();
            }
        }


        override public function measure():void
        {
            var numElements:int = target.numElements;

            var dx:Number = 0;
            var dy:Number = 0;

            var element:ILayoutElement;

            for (var i:int = 0; i < numElements; i++)
            {
                element = target.getVirtualElementAt(i);

                element.setLayoutBoundsSize(NaN, NaN);

                var matrix:Matrix3D = new Matrix3D();

                matrix.appendRotation(orientation * Math.pow(-1, i), Vector3D.Y_AXIS);

                if (i % 2 == 0)
                {
                    matrix.appendTranslation(dx, 0, element.getLayoutBoundsWidth(false) * Math.sin(orientationRad));
                }
                else
                {
                    matrix.appendTranslation(dx, 0, 0)
                }

                dx += element.getLayoutBoundsWidth(false) * Math.cos(orientationRad) + gap;
                dy = Math.max(dy, element.getLayoutBoundsHeight());
            }

            if (selectedIndex > -1)
            {
                element = target.getElementAt(selectedIndex);
                dx += element.getLayoutBoundsWidth(false) * (1 - Math.cos(orientationRad));
            }

            target.measuredHeight = dy;
            target.minHeight = dy;

            target.measuredWidth = dx;
            target.minWidth = dx;
        }

        override public function updateDisplayList(width:Number, height:Number):void
        {
            var perspectiveProjection:PerspectiveProjection = new PerspectiveProjection();
            perspectiveProjection.projectionCenter = new Point(width / 2, height / 2);
            perspectiveProjection.focalLength = 1500;

            target.transform.perspectiveProjection = perspectiveProjection;

            var numElements:int = target.numElements;
            var dx:Number = 0;
            var element:ILayoutElement;
            var matrix:Matrix3D;
            var lightFactor:Number;
            var elementWidth:Number;

            var j:Number = selectedIndex % 2 == 0 ? 0 : 1;

            finalMatrixs = new Vector.<Matrix3D>();

            // Process items before selectedItem
            for (var i:int = 0; i < selectedIndex; i++, j++)
            {
                element = target.getElementAt(i);
                element.setLayoutBoundsSize(NaN, NaN);
                elementWidth = element.getLayoutBoundsWidth(false);

                matrix = new Matrix3D();

                matrix.appendRotation(orientation * Math.pow(-1, j), Vector3D.Y_AXIS, new Vector3D(0, 0, 0));

                if (j % 2 == 0)
                {
                    matrix.appendTranslation(dx, 0, elementWidth * Math.sin(orientationRad));
                    lightFactor = normalisedLighteningFactor;
                }
                else
                {
                    matrix.appendTranslation(dx, 0, 0)
                    lightFactor = normalisedDarkeningFactor;
                }

                applyLightTransform(element, lightFactor);

                finalMatrixs.push(matrix);

                dx += elementWidth * Math.cos(orientationRad) + gap;
            }

            // process selectedItem
            if (selectedIndex > -1)
            {
                element = target.getElementAt(selectedIndex);
                element.setLayoutBoundsSize(NaN, NaN);
                elementWidth = element.getLayoutBoundsWidth(false);

                matrix = new Matrix3D();

                matrix.appendTranslation(dx, 0, elementWidth * Math.sin(orientationRad));

                finalMatrixs.push(matrix);
                applyLightTransform(element, 1);

                dx += elementWidth + gap;
            }

            // process items after selectedItem
            for (i = selectedIndex + 1; i < numElements; i++, j++)
            {
                element = target.getElementAt(i);
                element.setLayoutBoundsSize(NaN, NaN);
                elementWidth = element.getLayoutBoundsWidth(false);

                matrix = new Matrix3D();

                matrix.appendRotation(orientation * Math.pow(-1, j), Vector3D.Y_AXIS, new Vector3D(0, 0, 0));

                if (j % 2 == 0)
                {
                    matrix.appendTranslation(dx, 0, elementWidth * Math.sin(orientationRad));
                    lightFactor = normalisedLighteningFactor;
                }
                else
                {
                    matrix.appendTranslation(dx, 0, 0)
                    lightFactor = normalisedDarkeningFactor;
                }

                applyLightTransform(element, lightFactor);
                finalMatrixs.push(matrix);

                dx += elementWidth * Math.cos(orientationRad) + gap;
            }

            if (numElements > 0)
                playTransition();
        }

        protected function applyLightTransform(element:Object, lightFactor:Number):void
        {
            var transform:Transform = getElementTransform(element);

            transform.colorTransform = new ColorTransform(lightFactor, lightFactor, lightFactor, 1, 0, 0, 0, 0);
        }

        protected function getElementTransform(element:Object):Transform
        {
            var transform:Transform;

            if (element is DisplayObject)
                transform = DisplayObject(element).transform;
            else if (element is GraphicElement)
                transform = GraphicElement(element).transform;

            return transform;
        }

        protected function playTransition():void
        {
            if (transitionTimer)
            {
                transitionTimer.stop();
                transitionTimer.reset();
            }
            else
            {
                transitionTimer = new Timer(ANIMATION_DURATION / ANIMATION_STEPS, ANIMATION_STEPS);
                transitionTimer.addEventListener(TimerEvent.TIMER, transitionTickHandler);
                transitionTimer.addEventListener(TimerEvent.TIMER_COMPLETE, transitionCompleteHandler);
            }

            transitionTimer.start();
        }

        private function transitionCompleteHandler(event:Event):void
        {
            finalMatrixs = null;
        }

        private function transitionTickHandler(event:Event):void
        {
            var numElements:int = target.numElements;
            var elementFinalMatrix:Matrix3D, elementInitialMatrix:Matrix3D;
            var element:ILayoutElement;
            var transform:Transform;

            for (var i:int = 0; i < numElements; i++)
            {
                elementFinalMatrix = finalMatrixs[i]
                element = target.getElementAt(i);
                transform = getElementTransform(element);

                elementInitialMatrix = transform.matrix3D;
                elementInitialMatrix.interpolateTo(elementFinalMatrix, 0.3);
                element.setLayoutMatrix3D(elementInitialMatrix, false);
            }

        }
    }
}