using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using webapidemo.Models;

namespace webapidemo.Controllers
{
    public class WebApiController : ApiController
    {
        RegistrationEntities dbobj = new RegistrationEntities();
        [httpGet]
          public  IHttpActionResult Get()
        {
            List<detail> list = dbobj.details.ToList();
            return Ok(list);
        }
        [httpPut]
        public IHttpActionResult Getid(int id)
        {
            detail data = dbobj.details.Where(x => x.ID == id).SingleOrDefault();
            return Ok(data);
        }
        [httpPost]
        public IHttpActionResult insert( detail m)
        {
            dbobj.details.Add(m);
            dbobj.SaveChanges();
            return Ok("Record succesfully save");
        }
        [httpPut]
        public IHttpActionResult Update(detail d) 
        {
            detail up = dbobj.details.Where(x => x.ID == d.ID).SingleOrDefault();
            up.ID = d.ID;
            up.firstname = d.firstname;
            up.lastname = d.lastname;
            up.email = d.email;
            up.rollno = d.rollno;
            up.student_address = d.student_address;
            up.student_state = d.student_state;
            up.mobile = d.mobile;
            dbobj.SaveChanges();
            return Ok();
            
            
        }

      [HttpDelete]
        public IHttpActionResult delete(int id)
        {
            detail d = dbobj.details.Where(x => x.ID == id).SingleOrDefault();
            dbobj.details.Remove(d);
            dbobj.SaveChanges();
            return Ok();

        }

    }
}
