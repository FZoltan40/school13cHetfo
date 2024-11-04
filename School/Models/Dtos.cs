namespace School.Models
{
    /*StudentsDtos*/
    public record CreateStudentDto(string Name, sbyte Age, string Email);

    /*MarksDtos*/
    public record CreateMarkDto(sbyte MarkNumber, string MarkText, string Description, Guid StudentId);

}
