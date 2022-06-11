<h1 align="center">Image Resizing Service</h1>

<p align="center">
  <img alt="Github top language" src="https://img.shields.io/github/languages/top/devenes/image-resizing-service?color=blue">
  <img alt="Github language count" src="https://img.shields.io/github/languages/count/devenes/image-resizing-service?color=red">
  <img alt="Repository size" src="https://img.shields.io/github/repo-size/devenes/image-resizing-service?color=purple">
  <img alt="License" src="https://img.shields.io/github/license/devenes/image-resizing-service?color=pink">
  <!-- <img alt="Github issues" src="https://img.shields.io/github/issues/devenes/image-resizing-service?color=56BEB8" /> -->
  <!-- <img alt="Github forks" src="https://img.shields.io/github/forks/devenes/image-resizing-service?color=56BEB8" /> -->
  <!-- <img alt="Github stars" src="https://img.shields.io/github/stars/devenes/image-resizing-service?color=56BEB8" /> -->
</p>

<!-- Status -->

<!-- <h4 align="center">
	🚧  Image Resizing Service 🚀 Under construction...  🚧
</h4>

<hr> -->

<p align="center">
  <a href="#dart-about">About</a> &#xa0; | &#xa0;   
  <a href="#rocket-technologies">Technologies</a> &#xa0; | &#xa0;
  <a href="#white_check_mark-requirements">Requirements</a> &#xa0; | &#xa0;
  <a href="#checkered_flag-starting">Starting</a> &#xa0; | &#xa0;
  <a href="#memo-license">License</a> &#xa0; | &#xa0;
  <a href="https://github.com/devenes" target="_blank">Author</a>
</p>

<br>

## :dart: About

A simple image resizing service accepts HTTP GET or POST, with two parameters:

- urlBase64: Base64 encoded URL
- size: size of a square bounding box, in pixels
  Returns the resized image, or an image of the original size if size is less than the original size

## :rocket: Technologies

The following tools were used in this project:

- [Python](https://www.python.org/)
- [gunicorn](https://gunicorn.org/)
- [Flask](https://flask.palletsprojects.com/)
- [Pillow](https://pillow.readthedocs.io/)

## :white_check_mark: Requirements

Before starting :checkered_flag:, you need to have [Git](https://git-scm.com) and [Python](https://www.python.org/) installed.

## :checkered_flag: Starting

```bash
# Clone this project
git clone https://github.com/devenes/image-resizing-service
```

```bash
# Access
cd image-resizing-service
```

```bash
# Install dependencies
pip install -r requirements.txt
```

```bash
# Run the service
python image_resizer.py
```

- Try it out locally (see note below on dependencies)

```bash
# Get a base64 encoded version of an image URL:
echo -n "http://storage.googleapis.com/myBucketName/Image_Name.jpg" | base64
# Use curl to access the service, providing that base64 encoded URL value:
time curl http://localhost:18080/?size=800&urlBase64=aHR0cDovL3N0b3J...bi5qcGc= > output.jpg
```

- Installation of dependencies, for running locally (Ubuntu)

```bash
sudo apt-get build-dep python-imaging
sudo apt-get install libjpeg8 libjpeg62-dev libfreetype6 libfreetype6-dev
sudo apt-get install python-pip
sudo pip install Pillow
```

- Run the service in a Docker container

```bash
docker run --rm -i -t -d -p 8080:18080 image/name
```

- Run on Cloud

```bash
# Edit ./manifest.yml to suit your application
cf push
cf open
```

## :memo: License

This project is under license from MIT. For more details, see the [LICENSE](LICENSE.md) file.

Made with :heart: by <a href="https://github.com/devenes" target="_blank">devenes</a>

&#xa0;

<a href="#top">Back to top</a>
