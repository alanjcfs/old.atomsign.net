'use strict';

import 'bootstrap'
import './css/screen.scss';
import './index.html';
import home from './pages/home.md';
import school from './pages/school.md';
import work from './pages/work.md';
import resume from './pages/resume.md';
import md from 'markdown-it';
const markdown = md({ html: true });

Vue.component('page-item', {
    props: ['page'],
    template: '<li>{{page.title}}</li>'
});

Vue.component('text-item', {
    props: ['page'],
    template: '<div>{{page.body}}</div>'
})

window.addEventListener('load', function() {
    new Vue({
        el: '#main',
        data: {
            active: 1,
            pages: [
                {
                    id: 1,
                    title: 'Home',
                    body: markdown.render(home),
                },
                {
                    id: 2,
                    title: 'School',
                    body: markdown.render(school),
                },
                {
                    id: 3,
                    title: 'Work',
                    body: markdown.render(work),
                },
                {
                    id: 4,
                    title: 'Resume',
                    body: markdown.render(resume),
                }
            ]
        },
        methods: {
            changeActive: function(id) {
                this.active = id;
            }
        }
    });
});
