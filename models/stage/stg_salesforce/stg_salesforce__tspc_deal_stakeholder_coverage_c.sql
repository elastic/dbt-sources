
with source as (

    select * from {{ source('raw_salesforce', 'tspc_deal_stakeholder_coverage_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        tspc_comments_c,
        tspc_stakeholder_c,
        tspc_user_c

    from source

)

select * from renamed
