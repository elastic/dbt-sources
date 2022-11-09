
with source as (

    select * from {{ source('raw_netsuite_sa', 'pt_taxonomy_reference') }}

),

renamed as (

    select
        pt_taxonomy_reference_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        pt_taxonomy_reference_extid,
        pt_taxonomy_reference_name,
        value_0

    from source

)

select * from renamed
