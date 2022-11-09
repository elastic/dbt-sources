
with source as (

    select * from {{ source('raw_salesforce', 'dated_conversion_rate_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_deleted,
        _fivetran_synced,
        conversion_rate,
        created_by_id,
        created_date,
        iso_code,
        last_modified_by_id,
        last_modified_date,
        next_start_date,
        start_date,
        system_modstamp

    from source

)

select * from renamed
