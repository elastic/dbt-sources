
with source as (

    select * from {{ source('raw_salesforce', 'data_assessment_field_metric_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        data_assessment_metric_id,
        field_name,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        num_matched_blanks,
        num_matched_different,
        num_matched_in_sync,
        num_unmatched_blanks,
        system_modstamp

    from source

)

select * from renamed
