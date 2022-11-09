
with source as (

    select * from {{ source('raw_salesforce', 'data_assessment_value_metric') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        data_assessment_field_metric_id,
        field_value,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        value_count

    from source

)

select * from renamed
