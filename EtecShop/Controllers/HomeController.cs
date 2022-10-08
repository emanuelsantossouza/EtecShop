using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using EtecShop.Models;
using EtecShop.Data;
using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace EtecShop.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;
    private readonly ApplicationDbContext _context;
    public HomeController(ILogger<HomeController> logger, ApplicationDbContext context)
    {
        _logger = logger;
        _context = context;
    }


    public IActionResult Index()
    {
        var products = _context.Products
        .Include(p => p.Brand).Include(p => p.Category).ToList();
        return View(products);
    }

    public IActionResult Privacy() // Ação precisa disso pra funcionar
    {
        return View();
    }

    public IActionResult About()
    {
        return View();
    }
    public IActionResult Products()
    {
        return View();
    }
    public IActionResult Contact()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
