
with source as (

    select * from {{ source('raw_salesforce', 'msa_version_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        chatter_warning_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        name_c,
        owner_id,
        status_c,
        system_modstamp

    from source

)

select * from renamed
