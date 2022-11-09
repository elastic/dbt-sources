
with source as (

    select * from {{ source('raw_salesforce', 'opportunity_field_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        field,
        is_deleted,
        new_value,
        old_value,
        opportunity_id,
        data_type

    from source

)

select * from renamed
