using System;
using Microsoft.EntityFrameworkCore;

namespace WebApi.Models {
    public class ProdContext : DbContext {

        public virtual DbSet<User> Users { get; set; }

        public ProdContext(DbContextOptions<ProdContext> options) : base(options) {}

        protected override void OnModelCreating(ModelBuilder builder) {
        }
    }
}
