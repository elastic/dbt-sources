
with source as (

    select * from {{ source('raw_netsuite_sa', 'itr_supplementary_unit') }}

),

renamed as (

    select
        itr_supplementary_unit_id,
        _fivetran_deleted,
        _fivetran_synced,
        abbreviation,
        date_created,
        date_deleted,
        is_inactive,
        itr_supplementary_unit_extid,
        itr_supplementary_unit_name,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
