const db = require('../data/dbconfig.js');

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove
};

function find() {
    return db('schemes');
}

function findById(id) {
    return db('schemes').where({id}).first();
}

function findSteps(id) {
    return db('steps').where('scheme_id', id);
  }

function add(scheme) {
    return db('schemes').insert(scheme).then((id) => {
        return findById(id[0]);
    });
}

function update(scheme) {
    return db('schemes').where({id}).update(changes).then(()=> {
        return findById(id);
    })
}

function remove(id) {
    return db('schemes').where({id}).del();
}