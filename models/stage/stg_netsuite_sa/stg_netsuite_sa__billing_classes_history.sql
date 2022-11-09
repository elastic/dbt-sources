
with source as (

    select * from {{ source('raw_netsuite_sa', 'billing_classes_history') }}

),

renamed as (

    select
        billing_class_id,
        _fivetran_deleted,
        _fivetran_synced,
        billing_class_extid,
        date_deleted,
        description,
        is_inactive,
        name,
        sale_unit_id,
        units_type_id,
        partition_date

    from source

)

select * from renamed
