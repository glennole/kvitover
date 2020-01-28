using System;
using System.Collections;
using System.Collections.Generic;
using kvitover.webapi.Models;
using Microsoft.AspNetCore.Mvc;

namespace kvitover.webapi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ReceiptController : Controller
    {
        // GET
        [HttpGet]
        public IEnumerable<Receipt> Get()
        {
            return new List<Receipt>(){new Receipt(){PurchaseDate = DateTime.Now.AddDays(-1), ReceiptId = 1, UploadedDate = DateTime.Now}};
        }
    }
}