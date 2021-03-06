﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KenticoCloud.Deliver
{
    /// <summary>
    /// Represents "contains" operation.
    /// </summary>
    public class ContainsFilter : AbstractFilter
    {
        /// <summary>
        /// Constructs the Contains filter.
        /// </summary>
        /// <param name="element">Element codename.</param>
        /// <param name="value">Parameter value.</param>
        public ContainsFilter(string element, string value)
            : base (element, value)
        {
            Operator = "[contains]";
        }
    }
}
