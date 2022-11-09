
with source as (

    select * from {{ source('raw_netsuite', 'pt_taxonomy_reference') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        pt_taxonomy_reference_extid,
        pt_taxonomy_reference_id,
        pt_taxonomy_reference_name,
        value_0

    from source

)

select * from renamed
