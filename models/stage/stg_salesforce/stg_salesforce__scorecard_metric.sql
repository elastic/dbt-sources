
with source as (

    select * from {{ source('raw_salesforce', 'scorecard_metric') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        category,
        created_by_id,
        created_date,
        currency_iso_code,
        description,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        report_id,
        scorecard_id,
        system_modstamp

    from source

)

select * from renamed
