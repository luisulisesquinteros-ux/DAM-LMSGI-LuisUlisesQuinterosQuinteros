var app = {};
var monCallback = function(data) {
    console.log("Datos recibidos:", data);
    app.offices = data;
    var html = "";
    app.offices.map(offices => {
        // Zona foto y encabezadode cada objeto
        html += " <section class='bg-white shadow-sm border border-light overflow-hidden rounded-sm'>";
        html += "<div class='header-blue text-white px-4 py-2 font-bold text-xl'>";
        html +=  offices.city + "</div>";
        html += "<div class='flex flex-col md:flex-row p-4 gap-6'>";
        html += "<div class='w-full md:w-1/3'>";
        html += "<img src='" + offices.picture + "' alt='" + offices.city + "'";
        html += "class='w-full h-40 object-cover rounded-md border border-gray-200'> </div>";
        // Zona de texto de cada objeto
        html += "<div class='w-full md:w-2/3 border-t border-l border-light'>";
        html += "<div class='grid grid-cols-1 divide-y divide-gray-200 border-b border-r border-light'>";
        html += "<div class='grid grid-cols-3 md:grid-cols-4 items-center'>";
        html += "<div class='p-2 font-bold text-sm bg-gray-50 border-r border-light'>Telèfon:</div>";
        html += "<div class='p-2 text-sm col-span-2 md:col-span-3'>  " + offices.phone + "</div>";
        html += "</div>";
        html += "<div class='grid grid-cols-3 md:grid-cols-4 items-center'>";
        html += "<div class='p-2 font-bold text-sm bg-gray-50 border-t border-r border-light'>Direcció:</div>";
        html += "<div class='p-2 text-sm col-span-2 md:col-span-3 border-t border-light'> " + offices.addressLine1 + ", " + offices.addressLine2 + "</div>";
        html += "</div>";
        html += "<div class='grid grid-cols-3 md:grid-cols-4 items-center'>";
        html += "<div class='p-2 font-bold text-sm bg-gray-50 border-t border-r border-light'>Estat:</div>";
        html += "<div class='p-2 text-sm col-span-2 md:col-span-3 border-t border-light'> " + offices.state + "</div>";
        html += "</div>";
        html += "<div class='grid grid-cols-3 md:grid-cols-4 items-center'>";
        html += "<div class='p-2 font-bold text-sm bg-gray-50 border-t border-r border-light'>País:</div>";
        html += "<div class='p-2 text-sm col-span-2 md:col-span-3 border-t border-light'> " + offices.country + "</div>";
        html += "</div>";
        html += "</div>";
        html += "</div>";
        html += "</div>";
        html += "</section>";
    })
document.getElementById("offices-container").innerHTML = html;

}




