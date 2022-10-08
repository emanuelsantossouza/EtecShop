using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EtecShop.Models;

    [Table("Category")] 
    public class Category
    {
        [Key] // Chave primari, Not Null, Unique, 
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)] // gera uma identidiade um numero automaticamente
        public int Id { get; set; }

        [Display(Name = "Nome da Categoria")] // propt = é o que aparece dentro do campo que quando vc digita desaparace
        [Required(ErrorMessage = "Por favor, informe o Nome")]
        [StringLength(30, ErrorMessage = "O nome deve possuir no maximo 30 carcteres FDP")]
        public string Name { get; set; }
    }
