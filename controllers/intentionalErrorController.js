const intentionalErrorController = {};

intentionalErrorController.causeError = async function(req, res, next) {
    console.log("Causing an error...");
    let aNumber = 1/0;
    throw new Error("Oh no! There was a crash. Maybe try a different route?");
    res.render("./", {
        title: "Intentional Error",
    })
}

module.exports = intentionalErrorController;