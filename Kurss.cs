//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NodarbibuSarakstsPR4
{
    using System;
    using System.Collections.Generic;
    
    public partial class Kurss
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Kurss()
        {
            this.Lektors = new HashSet<Lektors>();
            this.Nodarbiba = new HashSet<Nodarbiba>();
        }
    
        public int Id { get; set; }
        public string Nosaukums { get; set; }
        public short Stundas { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Lektors> Lektors { get; set; }
        public virtual Programma Programma { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Nodarbiba> Nodarbiba { get; set; }
    }
}