abstract class IDownload {
  download();
}

abstract class IUpload {
  upload();
}

class TorrentsClient implements IDownload, IUpload {
  @override
  download() {}

  @override
  upload() {}
}

class TorrentsServer implements IUpload {
  @override
  upload() {}
}
