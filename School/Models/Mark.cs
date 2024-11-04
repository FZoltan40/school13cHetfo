using System;
using System.Collections.Generic;

namespace School.Models;

public partial class Mark
{
    public Guid Id { get; set; }

    public sbyte? MarkNumber { get; set; }

    public string? MarkText { get; set; }

    public string? Description { get; set; }

    public DateTime? CreatedTime { get; set; }

    public DateTime? UpdatedTime { get; set; }

    public Guid? StudentId { get; set; }

    public virtual Student? Student { get; set; }
}
