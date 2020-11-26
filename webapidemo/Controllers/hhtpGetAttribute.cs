using System;

namespace webapidemo.Controllers
{
    internal class httpClient : Attribute
    {
        public object BaseAddress { get; internal set; }

        internal object getAsync(string v)
        {
            throw new NotImplementedException();
        }
    }
}