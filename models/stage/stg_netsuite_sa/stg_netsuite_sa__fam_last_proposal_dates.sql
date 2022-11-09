
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_last_proposal_dates') }}

),

renamed as (

    select
        fam_last_proposal_dates_id,
        _fivetran_deleted,
        _fivetran_synced,
        asset_type_id,
        date_created,
        date_deleted,
        date_last_checked,
        fam_last_proposal_dates_extid,
        is_inactive,
        last_modified_date,
        parent_id,
        subsidiary_id

    from source

)

select * from renamed
