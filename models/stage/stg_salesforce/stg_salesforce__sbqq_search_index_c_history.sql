
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_search_index_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        sbqq_localization_c,
        sbqq_value_c,
        system_modstamp

    from source

)

select * from renamed
