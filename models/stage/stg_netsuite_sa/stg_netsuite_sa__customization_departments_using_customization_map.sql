
with source as (

    select * from {{ source('raw_netsuite_sa', 'customization_departments_using_customization_map') }}

),

renamed as (

    select
        customization_id,
        department_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed