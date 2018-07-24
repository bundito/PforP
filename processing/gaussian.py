from wand.image import Image

with Image(filename="Add-N-To-X-1.JPG") as original:
    with original.clone as converted:
        converted.format = "jpg"

        converted.save(filename="converted.jpg")

