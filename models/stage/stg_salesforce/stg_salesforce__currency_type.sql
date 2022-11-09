
with source as (

    select * from {{ source('raw_salesforce', 'currency_type') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        conversion_rate,
        created_by_id,
        created_date,
        decimal_places,
        is_active,
        is_corporate,
        iso_code,
        last_modified_by_id,
        last_modified_date,
        system_modstamp

    from source

)

select * from renamed
