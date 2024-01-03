// Vuetify plugin
import 'vuetify/styles'
import '@mdi/font/css/materialdesignicons.css'
import { createVuetify } from 'vuetify'

export const vuetifyPlugin = createVuetify({
    ssr: true,
    theme: {
        defaultTheme: 'dark'
    }
})
