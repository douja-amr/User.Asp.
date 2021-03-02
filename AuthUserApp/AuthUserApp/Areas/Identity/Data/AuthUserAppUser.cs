﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;

namespace AuthUserApp.Areas.Identity.Data
{
    // Add profile data for application users by adding properties to the AuthUserAppUser class
    public class AuthUserAppUser : IdentityUser
    {
        [PersonalData]
        [Column(TypeName ="nvarchar(100)")]
        public string firstName { get; set; }

        [PersonalData]
        [Column(TypeName = "nvarchar(100)")]
        public string LastName { get; set; }

        [PersonalData]
        [Column(TypeName = "nvarchar(100)")]
        public string CIN { get; set; }

        [PersonalData]
        [Column(TypeName = "nvarchar(100)")]
        public string Adresse{ get; set; }

    }
}
