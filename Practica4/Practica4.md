# Untitled

# Practica 4

# Ruby on Rails

1. El framework está compuesto de diferentes librerías:
    - ActionMailer
        - Permite enviar emails desde la aplicacion usando clases y vista de clase mailer
        - [https://guides.rubyonrails.org/action_mailer_basics.html](https://guides.rubyonrails.org/action_mailer_basics.html)
    - ActionPack
        - Action Pack es un marco para manejar y responder a solicitudes web. Proporciona mecanismos para el **enrutamiento** (asignación de URL de solicitud a acciones), definición de **controladores** que implementan acciones y generación de respuestas. En resumen, Action Pack proporciona la capa de controlador en el paradigma MVC.
        - [https://api.rubyonrails.org/files/actionpack/README_rdoc.html](https://api.rubyonrails.org/files/actionpack/README_rdoc.html)
    - ActionView
        - Action View es responsable de compilar la respuesta.
        - Las plantillas de Action View se escriben usando Ruby incrustado en etiquetas mezcladas con HTML.
        - [https://railsguides.es/action_view_overview.html](https://railsguides.es/action_view_overview.html)
    - ActiveJob
        - ActiveJob funciona principalmente para declarar “ *Jobs* ” (Trabajos) en nuestro proyecto, encargados de ejecutarse en segundo plano, su estructura principal se basa en una cola de procesos programados que son ejecutados a medida de su prioridad.
        - Normalmente los Jobs son usados para la realización de actividades necesarias para el cumplimiento de requerimientos que pueden programarse, tal como podría ser desde una limpieza interna en el programa hasta realizar cargos, envío de correos, recordatorios, etc.
        - [https://codigofacilito.com/articulos/activejob-rails](https://codigofacilito.com/articulos/activejob-rails)
    - ActiveModel
        - Active Model es una biblioteca que contiene varios módulos utilizados en el desarrollo de clases que necesitan algunas características presentes en Active Record. Algunos de estos módulos se explican a continuación.
        - [https://guides.rubyonrails.org/active_model_basics.html](https://guides.rubyonrails.org/active_model_basics.html)
    - ActiveRecord
        - **ActiveRecord** es la capa que nos permite acceder y manipular la información de la base de datos sin necesidad de escribir [SQL (Structured Query Language)](https://www.notion.so/SQL).
        - [https://guias.makeitreal.camp/ruby-on-rails-i/activerecord-modelos](https://guias.makeitreal.camp/ruby-on-rails-i/activerecord-modelos)
    - ActiveSupport
        - Active Support carga las dependencias mínimas de forma predeterminada. Se rompe en pedazos pequeños para que solo se puedan cargar las extensiones deseadas. También tiene algunos puntos de entrada convenientes para cargar extensiones relacionadas de una sola vez, incluso todo.
        - [https://guides.rubyonrails.org/active_support_core_extensions.html](https://guides.rubyonrails.org/active_support_core_extensions.html)
    - ActionCable
        - Action Cable integra a la perfección [WebSockets](https://en.wikipedia.org/wiki/WebSocket) con el resto de su aplicación Rails. Permite que las funciones en tiempo real se escriban en Ruby con el mismo estilo y forma que el resto de su aplicación Rails, sin dejar de ser escalable y de alto rendimiento
        - [https://guides.rubyonrails.org/action_cable_overview.html](https://guides.rubyonrails.org/action_cable_overview.html)
    - ActiveStorage
        - **ActiveStorage** es una herramienta que facilita la subida de archivos a almacenamientos en la nube como [AWS](https://aws.amazon.com/), [Google Cloud Storage](https://cloud.google.com/storage/) o [Microsoft Azure Storage](https://azure.microsoft.com/) y adjunta esos archivos convirtiéndolos en *Active Record objects* . Viene con un servicio local basado en disco para desarrollo y pruebas, y admite la duplicación de archivos a otros servicios para copias de seguridad y migraciones.
        - [https://codigofacilito.com/articulos/active-storage](https://codigofacilito.com/articulos/active-storage)
    - ActionText
        - ActionText es la última incorporación al marco Rails. Nos permite crear contenido de texto enriquecido, almacenarlo en una tabla y luego adjuntarlo a cualquiera de nuestros modelos. Es súper simple de configurar y produce excelentes resultados.
        - [https://oozou.com/blog/using-actiontext-in-rails-6-85](https://oozou.com/blog/using-actiontext-in-rails-6-85)
    - ActionMailbox
        - Action Mailbox para procesar correos electrónicos entrantes. Enruta los correos electrónicos entrantes a buzones de correo similares a controladores para su procesamiento en Rails. Es compatible con todas las plataformas principales como Mailgun, Mandrill, Postmark y SendGrid.
        - [https://blog.saeloun.com/2019/11/11/rails-6-action-mailbox-tryout.html](https://blog.saeloun.com/2019/11/11/rails-6-action-mailbox-tryout.html)
    
    Para cada una de estas librerías, analizá y respondé las siguientes preguntas:
    
    1. ¿Qué funcion principal cumple?
    2. Citá algún ejemplo donde se te ocurra que podrías utilizarla.
2. Investigá cómo se crea una aplicación Rails nueva y enumerá los pasos básicos para tener la
aplicación funcionando con una base de datos SQLite.
    
    ```bash
    $ rails new proyecto # Te creara un proyecto con el motor de BD sqlite
    $ cd proyecto # Ingresamos al proyecto
    $ rails db:create # Esto nos creara dos BD una para test y una para development
    $ rails server # Inicia el servidor
    
    ```
    
3. Siguiendo los pasos que enumeraste en el punto anterior, creá una nueva aplicación Rails lla‑
mada practica_rails en la cual vas a realizar las pruebas para los ejercicios de esta práctica.
    
    ```
    Hecho
    ```
    
4. ¿Qué es un ambiente (environment) en una aplicación Rails? ¿Qué sentido considerás que tiene usar diferentes ambientes en tu aplicación? ¿Cuál es el ambiente por defecto?
    
    Un ambiente en Rails se refiere a si estamos en development, production o test, tiene sentido ya que rails separa por ejemplo lo que es la base de datos de test y de development. Cuando corremos los test se haran en una base de datos test y por el otro lado cuando desarrollamos va a ser una de development. El enviroment por defecto que posee rails es development.
    
5. Sobre la configuración de Rails:
    1. ¿De qué forma podés especificar parámetros de configuración del framework en una app
    Rails?
    La forma en la que se configura una aplicacion rails es en la carpeta config donde tendremos diferentes archivos de configuracion
    2. ¿Cuáles son los archivos de configuración principales? Intentá relacionar este concepto
    con los ambientes que antes viste.
    Los principales archivos de configuracion dentro de config son, `puma`, `routes`, `enviroment`, `database`, `application`
    3. Modificá el locale por defecto de tu aplicación para que sea español.
    Principalmente debemos de crear un archivo en `/config/locale` llamado `es.yml`
    4. Modificá la zona horaria de tu aplicación para que sea la de la Argentina (GMT‑3).
    Lo que debemos hacer es ir a la carpeta `config` y en el archivo `application` cambiar la linea de time zone `config.time_zone="Buenos Aires"`
6. Sobre los initializers:
    1. ¿Qué son y para qué se utilizan?Los inicializadores se ejecutan solo una vez después de que todo el marco y las gemas que tiene y cualquier constante que defina estén accesibles en toda la aplicación. Son útiles para mantener los ajustes de configuración que deben realizarse después de cargar todo su entorno.
    2. ¿En qué momento de la vida de la aplicación se ejecutan?
    La primera vez que ejecutamos el servidor
    3. Si tu app está corriendo y modificás algún initializer, ¿los cambios se reflejan automática‑
    mente? ¿Por qué?
    No, como es a nivel de compilacion, se debe reiniciar el servidor
    4. Creá un initializer en tu aplicación que imprima en pantalla el string "Booting
    practica_rails :)". ¿En qué momento se visualiza este mensaje?
    Se visualiza en el momento de la compilacion
7. Sobre los generators:
    1. ¿Qué son? ¿Qué beneficios imaginás que trae su uso?
    Los generators son comando que se pueden usar en la terminal para agilizar procesos de creacion, ya sea de modelos, vistas, controladores, migraciones, etc
    2. ¿Con qué comando podés consultar todos los generators disponibles en tu app Rails?
    `rails generator`
        
        ```
        Rails:
        application_record
        benchmark
        channel
        controller
        generator
        helper
        integration_test
        jbuilder
        job
        mailbox
        mailer
        migration
        model
        resource
        scaffold
        scaffold_controller
        system_test
        task
        
        ```
        
        ```
        ActiveRecord:
        active_record:application_record
        active_record:multi_dbStimulus:
        
        stimulusTestUnit:
        test_unit:channel
        test_unit:generator
        test_unit:install
        test_unit:mailbox
        test_unit:plugin
        
        ```
        
    3. Utilizando el generator adecuado, creá un controlador llamado PoliteController que
    tenga una acción salute que responda con un saludo aleatorio de entre un arreglo de 5
    diferentes, como por ejemplo “Good day sir/ma’am.”.
        
        `rails generate controller PoliteController`
        
        ```
        create  app/controllers/polite_controller.rb
        invoke  erb
        create    app/views/polite
        invoke  test_unit
        create    test/controllers/polite_controller_test.rb
        invoke  helper
        create    app/helpers/polite_helper.rb
        invoke    test_unit
        
        ```
        
8. Sobre routing:
    1. ¿Dónde se definen las rutas de la app Rails?
    Las rutas en
    2. ¿De qué formas se pueden definir las rutas? Investigá la DSL para definición de rutas que
    Ruby on Rails provee.
        
        Cada ruta está compuesta por los siguientes elementos:
        
        - El **verbo HTTP** .
        - El **path** .
        - El **controlador** y el **método (acción)** que se van a encargar de procesar la petición que coincida.
        
        ```ruby
        get '/pages/home',to:'pages#home'
        get '/pages/home' => 'pages#home'
        get '/pages/home' # Rails infiere el controlador y el método de la ruta
        
        Rails.application.routes.draw do
          resources :hotels
        end
        
        ```
        
    3. ¿Qué ruta(s) agregó el generator que usaste en el último inciso del punto anterior?
    4. ¿Con qué comando podés consultar todas las rutas definidas en tu aplicación Rails?
        
        `Rails routes`
        
    5. Modificá el mapeo de rutas de tu aplicación para que al acceder a / (root) se acceda al
    controlador definido antes (polite#salute).
        
        `root polite#salute`
        

# Componentes principales del framework

## ActiveSupport (AS)

1. ¿De qué forma extiende AS las clases básicas de Ruby para incorporar nuevos métodos?
2. Investigá qué métodos agrega AS a las siguientes clases:
    1. String
    2. Array
    3. Hash
    4. Date
    5. Numeric
        
        [https://guides.rubyonrails.org/active_support_core_extensions.html#extensions-to-string](https://guides.rubyonrails.org/active_support_core_extensions.html#extensions-to-string)
        
3. ¿Qué hacen y en qué clase define AS los siguientes métodos?
    1. blank?
        
        Considera a los siguientes valores como en blanco
        
        - `nil` and `false`,
        - strings composed only of whitespace (see note below),
        - empty arrays and hashes, and
        - any other object that responds to `empty?` and is empty.
    2. present?
        
        Es equivalente a !blank?, osea que este presente un elemento 
        
        `return if self["Cache-Control"].**present?**`
        
    3. presence
        
        Devuelve su receptor si esta presente y un nil en caso contrario
        
        `host **=** config[:host].**presence** **||** 'localhost'`
        
    4. try
        
        Cuando se desea llamar a un metodo en un objeto solo si no es nil. Se usa try
        
        `@number.**try**(:next)`
        
    5. in?
        
        Testea si un objeto esta incluido dentro de otro objeto
        
        ```ruby
        1.in?([1,2])            => true
        "lo".in?("hello")   => true
        ```
        
    6. alias_method_chain
    7. delegate
        
        La macro `[delegate](https://api.rubyonrails.org/v7.0.4/classes/Module.html#method-i-delegate)`ofrece una manera fácil de reenviar métodos.
        
        ```ruby
        class User <  ApplicationRecord
        	  has_one :profile
        	
        	  def name
        						profile.name
        		end
        end
        ```
        
    8. pluralize
        
        El método `[pluralize](https://api.rubyonrails.org/v7.0.4/classes/String.html#method-i-pluralize)`devuelve el plural de su receptor:
        
        ```ruby
        "table".pluralize                # => "tables"
        "ruby".pluralize                  # => "rubies"
        "equipment".pluralize      # => "equipment"
        ```
        
    9. singularize
        
        El `[singularize](https://api.rubyonrails.org/v7.0.4/classes/String.html#method-i-singularize)`método es el inverso de `pluralize`:
        
        ```ruby
        "tables".singularize       # => "table"
        "rubies".singularize       # => "ruby"
        "equipment".singularize    # => "equipment"
        ```
        
    10. camelize
        
        El método `[camelize](https://api.rubyonrails.org/v7.0.4/classes/String.html#method-i-camelize)`devuelve su receptor en camelcase:
        
        ```ruby
        "product".camelize          # => "Product"
        "admin_user".camelize   # => "AdminUser"
        ```
        
    11. underscore
        
        El método `[underscore](https://api.rubyonrails.org/v7.0.4/classes/String.html#method-i-underscore)`es al revés, de camel case a paths:
        
        ```ruby
        "Product".underscore       #   => "product"
        "AdminUser".underscore  # => "admin_user"
        ```
        
    12. classify
        
        El metodo `classify` hace el nombre de la class 
        
        ```ruby
        "people".classify    # => "Person"
        "invoices".classify  # => "Invoice"
        "invoice_lines".classify   # => "InvoiceLine"
        ```
        
    13. constantize
        
        Resuelve la referencia de la constante
        
        `"Integer".**constantize** *# => Integer*`
        
    14. humanize
        
        Transforma los atributos names por display para la vista del usuario final 
        
        Specifically, it performs these transformations:
        
        - Applies human inflection rules to the argument.
        - Deletes leading underscores, if any.
        - Removes a "_id" suffix if present.
        - Replaces underscores with spaces, if any.
        - Downcases all words except acronyms.
        - Capitalizes the first word.
        
        ```ruby
        "name".humanize            # => "Name"
        "author_id".humanize    # => "Author"
        "author_id".humanize(capitalize:false)    # => "author"
        "comments_count".humanize     # => "Comments count"
        "_id".humanize   # => "Id"
        ```
        
    15. sum
        
        Suma todos los elementos de un enumerable
        
        `[1, 2, 3].**sum** *# => 6*`
        
        `(1**..**100).**sum**  *# => 5050*`
        
4. ¿De qué manera se le puede enseñar a AS cómo pasar de singular a plural (o viceversa) los sustantivos que usamos en nuestro código?
    1. Usando ese archivo con expresiones regulares
    
    > Tip: Mirá el archivo config/initializers/inflections.rb
    > 
5. Modificá la configuración de la aplicación Rails para que aprenda a pluralizar correctamente en español todas las palabras que terminen en l, n y r.
    
    > Tip: el uso de expresiones regulares simples ayuda.
    > 

## ActiveRecord (AR)

1. ¿Cómo se define un modelo con ActiveRecord? ¿Qué requisitos tienen que cumplir las clases
para utilizar la lógica de abstracción del acceso a la base de datos que esta librería ofrece?
    
    Los modelos se encuentran en la carpeta `app/models`.
    
    ```ruby
    class Book < ActiveRecord::Base
    end
    ```
    
2. ¿De qué forma sabe ActiveRecord qué campos tiene un modelo?
    
    En el **modelo** no se definen las columnas de la tabla explícitamente, **ActiveRecord** las toma de la tabla directamente.
    
3. ¿Qué metodos (getters y setters) genera AR para los campos escalares básicos (integer,
string, text, boolean, float)?
4. ¿Qué convención define AR para inferir los nombres de las tablas a partir de las clases Ruby?
Citá ejemplos.
    
    Por convención, el nombre de la tabla es el mismo nombre del **modelo** pero sin capitalizar y en plural (`books` en este caso).
    
5. Sobre las migraciones de AR:
    - ¿Qué son y para qué sirven?
        
        Las migraciones nos permiten hacer cambios sobre el esquema de la base de datos de forma iterativa y consistente.
        
        Una migración es un archivo que se crea dentro de la carpeta `db/migrate`  y que contiene instrucciones para modificar el esquema de la base de datos (crear tablas, agregar columnas, eliminar columnas, eliminar tablas, etc.).
        
    - ¿Cómo se generan?
        
        Cuando creas un **modelo** desde la línea de comandos con el generador de Rails, automáticamente se crea una **migración** con las instrucciones para crear la tabla.
        
        Sin embargo, también puedes crear migraciones para agregar, remover o cambiar columnas de una tabla, entre otros.
        
        La forma más fácil de crear una migración es desde la línea de comandos:
        
        rails generate migration <nombre_de_la_migración>
        
    - ¿Dónde se guardan en el proyecto?
        
        Una migración es un archivo que se crea dentro de la carpeta `db/migrate` 
        
    - ¿Qué formato/organización tienen sus nombres de archivo? ¿Por qué considerás que es
    necesario respetar ese formato?
        
        Si la migración es de la forma "AddXXXToYYY" seguido de una lista de columnas y su tipo, la migración va a tener las instrucciones para agregar automáticamente ese o esos campos. Por ejemplo, la migración anterior la hubiesemos podido crear más fácil de la siguiente forma:
        
        `rails generate migration AddImageUrlToBooks image_url`
        
        ```ruby
        class AddImageUrlToBooks < ActiveRecord::Migration[5.0]
        		def change
        				add_column :books, :image_url, :string
        		end
        end
        ```
        
    - Generá una migración que cree la tabla offices con los siguientes atributos:
        - name: string de 255 caracteres, no puede ser nulo.
        - phone_number: string de 30 caracteres, no puede ser nulo y debe ser único.
        - address: text.
        - available: boolean, por defecto true, no puede ser nulo
        
        ```ruby
        class AddAtributtesToOffice < ActiveRecord::Migration[7.0]
          def change
        
            create_table :offices do |t|
              t.timestamps
            end
        
            add_column :offices, :name, :string, limit: 255, null: false
            add_column :offices, :phone_number, :string, limit: 30, null: false, :unique => true
            add_column :offices, :address, :text
            add_column :offices, :available, :boolean, :default => true, :null => false
          end
        end
        ```
        
6. Creá el modelo Office para la tabla offices que creaste antes, e implementá en éste el método de instancia to_s.
    
    > Tip: también podés usar un generator para esto.
    > 
7. Utilizando migraciones, creá la tabla y el modelo para la clase Employee, con la siguiente es‑
tructura:
    - name: string de 150 caracteres, no puede ser nulo.
    - e_number: integer, no puede ser nulo, debe ser único.
    - office_id: integer, foreign key hacia offices.
    
    ```ruby
    class AddEmployeeTable < ActiveRecord::Migration[7.0]
      def change
        create_table :employees do |t|
          t.timestamps
        end
    
        add_column :employees, :name, :string, limit: 150, null: false
        add_column :employees, :e_number, :integer, null: false, unique: true
        add_reference :employees, :office, foreign_key: true
      end
    end
    ```
    
8. Agregá una asociación entre Employee y Office acorde a la columna office_id que posee
la tabla employees
    1. ¿Qué tipo de asociación declaraste en la clase Employee?
    2. ¿Y en la clase Office?
    3. ¿Qué métodos generó AR en el modelo a partir de esto?
9. Sobre scopes:
    1. ¿Qué son los scopes de AR? ¿Para qué los utilizarías?
        
        Los Scopes en Ruby on Rails son consultas personalizadas que el Desarrollador define dentro de sus modelos con el método **[scope](https://guides.rubyonrails.org/active_record_querying.html#scopeshttps://guides.rubyonrails.org/active_record_querying.html#scopes).**
        
        Cada Scope toma 2 argumentos, un nombre que utiliza para llamar a este Scope en el código y un lambda que implementa la consulta.
        
        ```ruby
        **class Producto < ApplicationRecord
        			scope :stock, -> { where("stock > 0") }
        end**
        ```
        
        Como resultado de llamar a un scope, se obtiene un objeto *ActiveRecord::Relation*, por ende podemos encadenar y combinar scopes.
        
        **`Producto.stock.en_oferta.first(10)`**
        
    2. Investigá qué diferencia principal existe entre un método de clase y un scope, cuando se
    los utiliza para realizar la misma tarea.
        
        si deseas usar esta consulta en otro lugar, puede que tengas que duplicar el código, por ende tendrás código repetitivo, entonces veamos como hacer esta consulta usando un scope, veamos el siguiente ejemplo. 
        
    3. Agregá los siguientes scopes al modelo Employee:
        - vacant: Filtra los empleados para quedarse únicamente con aquellos que no tengan
        una oficina asignada (o asociada).
        - occupied: Complemento del anterior, devuelve los empleados que sí tengan una ofi‑
        cina asignada.
    4. Agregá este scope al modelo Office:
        - empty: Devuelve las oficinas que están disponibles (available == true) que no tienen empleados asignados.
10. Sobre scaffold controllers:
    1. ¿Qué son? Al generarlos, ¿qué operaciones implementan sobre un modelo? ¿Pueden extenderse o modificarse?
        
        Scaffolding en Ruby on Rails se refiere a la **generación automática** de un conjunto de un modelo, vistas y un controlador que generalmente se usa para una sola tabla de base de datos.
        
        Estos se pueden extender 
        
    2. ¿Con qué comando se generan?
        
        `rails generate scaffold Story title:string content:text`
        
    3. Utilizando el generator que indicaste en el inciso anterior, generá un controlador de scaf‑
    fold para el modelo Office y otro para el modelo Employee.
    4. ¿Qué rutas agregó este generator?
        
        Agrego todas las rutas CRUD tanto para employees como para offices
        
    5. Analizá el código que se generó para los controladores y para las vistas, y luego modificalo para que no permita el borrado de ninguno de los elementos. Enumerá los cambios que debiste hacer para que:
        - Las vistas no muestren la opción de borrar.
            
            Se elimina los archivo show.html.erb se eliminan las liminas como 
            
            `<%= button_to "Destroy this employee", @employee, method: :delete %>`
            
        - Los controladores no tenga la acción destroy.
            
            Se eliminar los `:destroy`
            
        - Las rutas de borrado dejen de existir en la aplicación
            
            ```ruby
            resources :offices , only: [:index, :new, :create, :show, :update, :edit]
             resources :employees , only: [:index, :new, :create, :show, :update, :edit]
            ```
            
    6. Modificá la vista de detalle (show) de una oficina para que, además de la información de
    la misma que ya presenta, muestre un listado con los empleados que tenga asociados en
    el cual cada nombre de empleado sea un link a su vista de detalle (employees#show).
        
        > Tip: para armar los links, investigá el uso del helper link_to y utilizalo.
        > 
        
        Hecho
        

## ActiveModel (AM)

1. ¿Qué son los validadores de AM?
    
    Las validaciones garantizan que sólo información válida se almacene en la base de datos.
    
2. Agregá a los modelos Office y Employee las validaciones necesarias para hacer que sus atributos cumplan las restricciones definidas para las columnas de la tabla que cada uno representa.
3. Validadores personalizados:
    1. ¿Cómo podés definir uno para tus modelos AR?
    2. Implementá un validador que chequee que un string sea un número telefónico con un formato válido para la Argentina.
    3. Agregá el validador que definiste en el punto anterior a tu modelo Office para validar el
    campo phone_number.

## Internacionalización (i18n) y localización (l10n)

1. ¿A qué hacen referencia estos conceptos?
2. Investigá qué metodos provee la clase I18n para realizar la traducción (i18n) de texto y la localización (l10n) de valores.
3. Modificá el controlador PoliteController que creaste antes para que utilice traducciones al
imprimir el mensaje de saludo.
4. Agregá las traducciones en el locale por defecto (inglés). ¿Dónde está ubicado ese archivo?
¿Qué convención debe seguir el nombre de los archivos de traducciones para que Rails
sepa a qué locale corresponden?
    1. Agregá un nuevo archivo de traducciones para el idioma español, y en él definí los mismos
    mensajes de traducción que en el inciso anterior, pero esta vez en español.
    2. Modificá la lógica de este controlador para que cambie el locale con que mostrará los mensajes internacionalizados en función del parámetro lang que reciba:
        - Si no recibe el parámetro, o el mismo no es un locale de los reconocidos por la aplicación (en o es), tomará por defecto el default locale de la aplicación (I18n.default_locale). Ejemplos de este caso: se accede a localhost:3000/, localhost:3000/?lang=fr, o localhost:3000/?lang=english.
        - Si recibe un locale válido, debe utilizarse ese locale para realizar la internacionaliza‑
        ción demensajes en la respuesta a ese request. Esto no debemodificar el locale por defecto de la aplicación. Ejemplos de este caso: se accede a localhost:3000/?lang=es, y localhost:3000/?lang=en
5. Modificá los scaffold controllers que generaste para que utilicen i18n, tanto en las vistas como en los mensajes flash del controlador
    
    > Tip: Investigá qué helper provee Rails en las vistas para las traducciones.
    > 

## ActionPack (AP)

1. ¿Qué son los callbacks de controladores de AP? ¿Para qué los utilizarías?
2. Tomando como base la lógica que implementaste en PoliteController para permitir que
se especifique el locale a utilizar en la petición, refactorizá eso para que sea un callback de ese
controlador.
3. Refactorizá nuevamente el callback para que el mismo se ejecute también en el resto de los
controladores de tu aplicación (los scaffold controllers en este caso), sin repetir el código en
cada controlador. ¿Cómo hiciste eso?

[https://guias.makeitreal.camp/ruby-on-rails-i/activerecord-callbacks](https://guias.makeitreal.camp/ruby-on-rails-i/activerecord-callbacks)