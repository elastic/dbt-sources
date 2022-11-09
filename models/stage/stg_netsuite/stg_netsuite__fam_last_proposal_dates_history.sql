
with source as (

    select * from {{ source('raw_netsuite', 'fam_last_proposal_dates_history') }}

),

renamed as (

    select
        asset_type_id,
        date_created,
        date_last_checked,
        fam_last_proposal_dates_extid,
        fam_last_proposal_dates_id,
        is_inactive,
        last_modified_date,
        parent_id,
        subsidiary_id

    from source

)

select * from renamed
