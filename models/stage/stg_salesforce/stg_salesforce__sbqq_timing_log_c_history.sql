
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_timing_log_c_history') }}

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
        sbqq_element_c,
        sbqq_finish_c,
        sbqq_log_c,
        sbqq_start_c,
        sbqq_total_c,
        sbqq_url_c,
        system_modstamp

    from source

)

select * from renamed
