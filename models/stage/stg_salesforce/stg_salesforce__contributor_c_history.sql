
with source as (

    select * from {{ source('raw_salesforce', 'contributor_c_history') }}

),

renamed as (

    select
        partitiontime,
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
        contributor_notes_c,
        scoping_consultant_c

    from source

)

select * from renamed
