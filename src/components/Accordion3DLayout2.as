package components
{
    import flash.geom.Matrix3D;
    import flash.geom.PerspectiveProjection;
    import flash.geom.Point;
    import flash.geom.Vector3D;

    import mx.core.ILayoutElement;

    public class Accordion3DLayout2 extends Accordion3DLayout
    {
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
            var i:int = 0;

            finalMatrixs = new Vector.<Matrix3D>();

            // Process items before selectedItem
            for (i = 0; i < selectedIndex; i++)
            {
                element = target.getElementAt(i);
                element.setLayoutBoundsSize(NaN, NaN);
                elementWidth = element.getLayoutBoundsWidth(false);

                matrix = new Matrix3D();

                matrix.appendRotation(orientation * Math.pow(-1, i), Vector3D.Y_AXIS);

                if (i % 2 == 0)
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


                if (selectedIndex % 2 == 0)
                {
                    matrix.appendTranslation(dx, 0, elementWidth * Math.sin(orientationRad));
                }
                else
                {
                    matrix.appendTranslation(dx, 0, 0)
                }

                finalMatrixs.push(matrix);
                applyLightTransform(element, 1);

                dx += elementWidth + gap;
            }

            for (i = selectedIndex + 1; i < numElements; i++)
            {
                element = target.getElementAt(i);
                element.setLayoutBoundsSize(NaN, NaN);
                elementWidth = element.getLayoutBoundsWidth(false);

                matrix = new Matrix3D();

                matrix.appendRotation(orientation * Math.pow(-1, i - 1), Vector3D.Y_AXIS);

                if ((i - 1) % 2 == 0)
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
    }
}