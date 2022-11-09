
with source as (

    select * from {{ source('raw_salesforce', 'image_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        data_type,
        field,
        image_id,
        is_deleted,
        new_value,
        old_value

    from source

)

select * from renamed
