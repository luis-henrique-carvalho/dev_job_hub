// Importar Turbo (Rails 7)
import "@hotwired/turbo-rails"
import "../../vendor/assets/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"

// Importar Bootstrap e Popper.js
import * as bootstrap from "bootstrap"
import { Tooltip, Toast, Popover } from "bootstrap"

// Importar jQuery
import $ from "jquery"

// Importar seus controladores Stimulus
import "./controllers"

// Configuração do jQuery (exemplo)
$(document).ready(function () {
    console.log('jQuery is ready!');
});

// Iniciar AdminLTE (opcional, se necessário)
$(function () {
    $('[data-widget="pushmenu"]').PushMenu()
})
