using Microsoft.EntityFrameworkCore;
using EtecShop.Models;

namespace EtecShop.Data;

    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) :base(options)
        {
        }        

        public DbSet<Brand> Brands  { get; set; }

        public DbSet<Category> Categories { get; set; }
        public DbSet<Product> Products { get; set; }
    }
