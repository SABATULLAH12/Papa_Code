using System;

namespace PapaUploadWebapp
{
    public class UploadRequest
    {
        public string command { get; set; }
        public string data { get; set; }
    }
    public class UploadResponse
    {
        public bool IsSuccess { get; set; }
        public string Summary { get; set; }
    }
}
