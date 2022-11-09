
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_paper_size') }}

),

renamed as (

    select
        fam_paper_size_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        fam_paper_size_extid,
        fam_paper_size_name,
        is_inactive,
        last_modified_date,
        length_0,
        parent_id,
        width

    from source

)

select * from renamed
