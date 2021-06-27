# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Disease.all.destroy_all
diseases = [
    #Apple
  {
    crop: 'Apple',
    disease: 'Apple scab',
    description: "Apple scab is a common disease of plants in the rose family (Rosaceae) that is caused by the ascomycete fungus Venturia inaequalis.[1] While this disease affects several plant genera, including Sorbus, Cotoneaster, and Pyrus, it is most commonly associated with the infection of Malus trees, including species of flowering crabapple, as well as cultivated apple.[2][3] The first symptoms of this disease are found in the foliage, blossoms, and developing fruits of affected trees, which develop dark, irregularly-shaped lesions upon infection.[4][5] Although apple scab rarely kills its host, infection typically leads to fruit deformation and premature leaf and fruit drop, which enhance the susceptibility of the host plant to abiotic stress and secondary infection.[6][5] The reduction of fruit quality and yield may result in crop losses of up to 70%, posing a significant threat to the profitability of apple producers.[6] To reduce scab-related yield losses, growers often combine preventive practices, including sanitation and resistance breeding, with reactive measures, such as targeted fungicide or biocontrol treatments, to prevent the incidence and spread of apple scab in their crops.",
    url: '8g0WyVi68GM&t=2s'
  },
  {
    crop: 'Apple',
    disease: 'Black rot',
    disease_label: 'Cedar apple rust',
    description: "Black rot is a name used for various diseases of cultivated plants caused by fungi or bacteria, producing dark brown discoloration and decay in the leaves of fruit and vegetables",
    url: 'agIwEBm7Zao'
  },
  {
    crop: 'Apple',
    disease: 'Cedar apple rust',
    disease_label: 'Black rot',
    description: "In virtually any location where apples or crabapples (Malus) and Eastern red-cedar (Juniperus virginiana) coexist, cedar apple rust can be a destructive or disfiguring disease on both the apples and cedars. Quince and hawthorn are the most common host and many species of juniper can substitute for the eastern red cedars. ",
    url: 'xNXVLKP6dkU'
  },
  {
    crop: 'Apple',
    disease: 'Healthy',
    description: "This is a healthy apple",
    url: 'xNXVLKP6dkU'
  },
    #Maize
  {
    crop: 'Maize',
    disease: 'Cercospora leaf spot gray leaf spot',
    description: "Gray leaf spot on corn, caused by the fungus Cercospora zeae-maydis, is a peren-nial and economically damaging disease  in the United States. Since the mid-1990s, the disease has increased in importance in Indiana, and now is the one of the most important foliar diseases of corn in the state",
    url: 'https://www.youtube.com/watch?v=107Xz8HslXM',
  },
  {
    crop: 'Maize',
    disease: 'Common rust ',
    description: 'Default Decription',
    url: 'xNXVLKP6dkU'
  },
  {
    crop: 'Maize',
    disease: 'Northern leaf blight',
    description: 'Default Decription',
    url: 'xNXVLKP6dkU'
  },
  {
    crop: 'Maize',
    disease: 'Healthy',
    description: "This is healthy",
    url: 'xNXVLKP6dkU'
  },
    #Orange
  {
    crop: 'Orange',
    disease: 'Haunglongbing (citrus greening)',
    description: 'Default Decription',
    url: 'xNXVLKP6dkU'
  },
    #Peach
  {
    crop: 'Peach',
    disease: 'Bacterial spot',
    description: 'Default Decription',
    url: 'xNXVLKP6dkU'
  },
  {
    crop: 'Peach',
    disease: 'Healthy',
    description: 'Healthy',
    url: 'xNXVLKP6dkU'
  },
    #Potato
  {
    crop: 'Potato',
    disease: 'Early blight',
    description: 'Default Decription',
    url: 'xNXVLKP6dkU'
  },
  {
    crop: 'Potato',
    disease: 'Late blight',
    description: 'Default Decription',
    url: 'xNXVLKP6dkU'
  },
  {
    crop: 'Potato',
    disease: 'Healthy',
    description: 'Healthy',
    url: 'xNXVLKP6dkU'
  },
    #Rice
  {
    crop: 'Rice',
    disease: 'Bacterial leaf blight',
    description: 'Default Decription',
    url: 'xNXVLKP6dkU'
  },
  {
    crop: 'Rice',
    disease: 'Brown spot',
    description: 'Default Decription',
    url: 'xNXVLKP6dkU'
  },
  {
    crop: 'Rice',
    disease: 'Leaf smut',
    description: 'Default Decription',
    url: 'xNXVLKP6dkU'
  }
]
diseases.each do |disease|
  Disease.create!(disease)
end