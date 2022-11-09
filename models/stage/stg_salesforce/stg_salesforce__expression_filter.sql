
with source as (

    select * from {{ source('raw_salesforce', 'expression_filter') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        context_id,
        created_by_id,
        created_date,
        currency_iso_code,
        filter_condition_logic,
        filter_description,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
