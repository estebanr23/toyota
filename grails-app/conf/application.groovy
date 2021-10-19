

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'toyota.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'toyota.UserRole'
grails.plugin.springsecurity.authority.className = 'toyota.Role'
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	[pattern: '/',               access: ['permitAll']],
	[pattern: '/error',          access: ['permitAll']],
	[pattern: '/index',          access: ['permitAll']],
	[pattern: '/index.gsp',      access: ['permitAll']],
	[pattern: '/shutdown',       access: ['permitAll']],
	[pattern: '/assets/**',      access: ['permitAll']],
	[pattern: '/**/js/**',       access: ['permitAll']],
	[pattern: '/**/css/**',      access: ['permitAll']],
	[pattern: '/**/images/**',   access: ['permitAll']],
	[pattern: '/**/favicon.ico', access: ['permitAll']],
	[pattern: '/impresora/**', access: ['ROLE_ADMIN']],
	[pattern: '/toner/**', access: ['ROLE_ADMIN']],
	[pattern: '/compra/**', access: ['ROLE_ADMIN']],
	[pattern: '/entrega/**', access: ['ROLE_ADMIN']],
	[pattern: '/sendMail/**', access: ['ROLE_ADMIN']],
	[pattern: '/user/**', access: ['ROLE_ADMIN']],
	[pattern: '/role/**', access: ['ROLE_ADMIN']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	[pattern: '/**',             filters: 'JOINED_FILTERS']
]
