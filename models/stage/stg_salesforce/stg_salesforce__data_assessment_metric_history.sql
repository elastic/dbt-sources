
with source as (

    select * from {{ source('raw_salesforce', 'data_assessment_metric_history') }}

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
        num_duplicates,
        num_matched,
        num_matched_different,
        num_processed,
        num_total,
        num_unmatched,
        system_modstamp

    from source

)

select * from renamed
