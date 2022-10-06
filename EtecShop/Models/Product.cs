using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EtecShop.Models;

    [Table("Product")] 
    public class Product
    {
        [Key] // Chave primari, Not Null, Unique, 
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)] // gera uma identidiade um numero automaticamente
        public int Id { get; set; }




        [Display(Name = "Nome da Produto")] // propt = é o que aparece dentro do campo que quando vc digita desaparace
        [Required(ErrorMessage = "Por favor, informe o Nome")]
        [StringLength(200, ErrorMessage = "O nome deve possuir no máximo 200 carcteres FDP")]
        public string Name { get; set; }





        [Display(Name = "Nome da descrição")] // propt = é o que aparece dentro do campo que quando vc digita desaparace
        [StringLength(8000, ErrorMessage = "O nome deve possuir no máximo 8000 carcteres FDP")]
        public string Description { get; set; }



        [Display(Name = "Nome da descrição")] 
        [Required(ErrorMessage = "Por favor, informe o Nome")]
        [Column(TypeName = "Decimal(10,2)")] //limite
        [DisplayFormat(DataFormatString = "{0:N2}", ApplyFormatInEditMode = true)] //limite e formatação
        public decimal Price { get; set; }



        [Display(Name = "Image")] 
        [StringLength(200)]
        public string Image { get; set; }


        
        [Display(Name = "Categoria")] // propt = é o que aparece dentro do campo que quando vc digita desaparace
        [Required(ErrorMessage = "Por favor, informe a Categoria")]
        [StringLength(200, ErrorMessage = "O nome deve possuir no máximo 200 carcteres FDP")]
        public int CategoryId { get; set; }
        [ForeignKey("CategoryId")]
        public Category Category { get; set; }


        [Display(Name = "Marca")] // propt = é o que aparece dentro do campo que quando vc digita desaparace
        [Required(ErrorMessage = "Por favor, informe a Marca")]
        public int BrandId { get; set; }
        [ForeignKey("BrandId")]
        public Brand Brand { get; set; }
    }
