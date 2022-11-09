
with source as (

    select * from {{ source('raw_salesforce', 'consumption_rate_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        consumption_rate_id,
        created_by_id,
        created_date,
        data_type,
        field,
        is_deleted,
        new_value,
        old_value

    from source

)

select * from renamed
