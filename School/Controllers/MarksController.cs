using Microsoft.AspNetCore.Mvc;
using School.Models;

namespace School.Controllers
{
    [Route("marks")]
    [ApiController]
    public class MarksController : ControllerBase
    {
        [HttpPost]
        public ActionResult<Mark> Post(CreateMarkDto createMarkDto)
        {
            var mark = new Mark
            {
                Id = Guid.NewGuid(),
                MarkNumber = createMarkDto.MarkNumber,
                MarkText = createMarkDto.MarkText,
                Description = createMarkDto.Description,
                CreatedTime = DateTime.Now,
                UpdatedTime = DateTime.Now,
                StudentId = createMarkDto?.StudentId
            };

            if (mark != null)
            {
                using (var contex = new LibraryContext())
                {
                    contex.Marks.Add(mark);
                    contex.SaveChanges();
                    return StatusCode(201, mark);
                }
            }
            return BadRequest();
        }
    }
}
