﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Btl_Web
{
    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public double Price { get; set; }
        public double OldPrice { get; set; }
        public string Description { get; set; }
        public string Brand { get; set; }
        public string Category { get; set; }

        public List<string> Images { get; set; }
    }

}
