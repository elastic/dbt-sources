
with source as (

    select * from {{ source('raw_salesforce', 'contributor_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        deal_support_request_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        scoping_consultant_c,
        contributor_notes_c

    from source

)

select * from renamed
