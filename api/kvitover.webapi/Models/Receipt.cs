using System;

namespace kvitover.webapi.Models
{
    public class Receipt
    {
        public int ReceiptId { get; set; }
        public DateTime UploadedDate { get; set; }
        public DateTime PurchaseDate { get; set; }
    }
}