
with source as (

    select * from {{ source('raw_netsuite', 'fam_paper_size_history') }}

),

renamed as (

    select
        date_created,
        fam_paper_size_extid,
        fam_paper_size_id,
        fam_paper_size_name,
        is_inactive,
        last_modified_date,
        length_0,
        parent_id,
        width

    from source

)

select * from renamed
