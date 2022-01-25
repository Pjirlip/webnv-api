module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '49787364e1bbbe5e32a7c8bd289f2365'),
  },
});
