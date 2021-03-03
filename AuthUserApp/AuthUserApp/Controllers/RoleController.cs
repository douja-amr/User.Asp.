using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Authorization;
using AuthUserApp.Models;

namespace AuthUserApp.Controllers
{
    public class RoleController : Controller
    {

        /// Injecting Role Manager

        RoleManager<IdentityRole> roleManager;

       
        public RoleController(RoleManager<IdentityRole> roleManager)
        {
            this.roleManager = roleManager;
        }



        // List of Roles 

        [Authorize(Policy = "writepolicy")]
        public IActionResult Index()
        {
            var roles = roleManager.Roles.ToList();
            return View(roles);
        }



        // Create role
       
        public IActionResult Create()
        {
            return View(new IdentityRole());
        }

        [HttpPost]
        public async Task<IActionResult> Create(IdentityRole role)
        {
            await roleManager.CreateAsync(role);
            return RedirectToAction("Index");
        }




        // Get the role name based in it's Id

        [HttpGet]
        public async Task<IActionResult> EditRole(string id)
        {
            
            var role = await roleManager.FindByIdAsync(id);

            if (role == null)
            {
                ViewBag.ErrorMessage = $"Role with Id = {id} cannot be found";
                return View("NotFound");
            }

            var model = new EditRole
            {
                Id = role.Id,
                RoleName = role.Name
            };

           

            return View(model);
        }


        // Update the role name

        [HttpPost]
        public async Task<IActionResult> EditRole(EditRole model)
        {
            var role = await roleManager.FindByIdAsync(model.Id);

            if (role == null)
            {
                ViewBag.ErrorMessage = $"Role with Id = {model.Id} cannot be found";
                return View("NotFound");
            }
            else
            {
                role.Name = model.RoleName;

                
                var result = await roleManager.UpdateAsync(role);

                if (result.Succeeded)
                {
                    return RedirectToAction("index");
                }

                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError("", error.Description);
                }

                return View(model);
            }
        }




        // Get Delete view by role Id


        [HttpGet]
        public async Task<IActionResult> DeleteRole(string id)
        {
            
            var role = await roleManager.FindByIdAsync(id);

            if (role == null)
            {
                ViewBag.ErrorMessage = $"Role with Id = {id} cannot be found";
                return View("NotFound");
            }

            var model = new DeleteRole
            {
                Id = role.Id,
                RoleName = role.Name

            };



            return View(model);
        }


         // Delete Role 

        [HttpPost]
        public async Task<IActionResult> DeleteRole(DeleteRole model)
        {
          
                

            var role = await roleManager.FindByIdAsync(model.Id);

            if (role == null)
            {
                ViewBag.ErrorMessage = $"Role with Id = {model.Id} cannot be found";
                return View("NotFound");
            }
            else
            {
                role.Name = model.RoleName;

           
                var result = await roleManager.DeleteAsync(role);

                if (result.Succeeded)
                {
                    return RedirectToAction("index");
                }

                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError("", error.Description);
                }

                return View(model);
            }
        }
    }






}

