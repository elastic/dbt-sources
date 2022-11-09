
with source as (

    select * from {{ source('raw_netsuite', 'billing_classes_history') }}

),

renamed as (

    select
        billing_class_extid,
        billing_class_id,
        description,
        is_inactive,
        name,
        sale_unit_id,
        units_type_id

    from source

)

select * from renamed
