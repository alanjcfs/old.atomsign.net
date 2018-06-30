'use strict';

import css from '../css/screen.scss';

Vue.component('page-item', {
    props: ['page'],
    template: '<li>{{page.title}}</li>'
});

Vue.component('text-item', {
    props: ['page'],
    template: '<div>{{page.body}}</div>'
})

window.onload = function() {
    new Vue({
        el: '#main',
        data: {
            active: 1,
            pages: [
                {
                    id: 1,
                    title: 'Home',
                    body: "<h1>Home</h1><p>This is me</p><p>I'm currently learning Elixir and VueJS.</p>",
                },
                {
                    id: 2,
                    title: 'School',
                    body: '<h1>School</h1><p>I went to school for biochemistry and changed career to software engineering somehow.',
                },
                {
                    id: 3,
                    title: 'Work',
                    body: '<h1>Work</h1><p>I currently work for Family Independence Initiative.</p><p>It uses Ruby on Rails and JavaScript.</p>',
                },
                {
                    id: 4,
                    title: 'Resume',
                    body: 'Eventually, when I set up an Elixir server that will serve the page here.',
                }
            ]
        },
        methods: {
            changeActive: function(id) {
                this.active = id;
            }
        }
    });
};
