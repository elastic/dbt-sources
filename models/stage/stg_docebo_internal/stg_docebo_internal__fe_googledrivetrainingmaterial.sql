
with source as (

    select * from {{ source('raw_docebo_internal', 'fe_googledrivetrainingmaterial') }}

),

renamed as (

    select

    from source

)

select * from renamed